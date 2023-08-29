const { readFile, rm, watch, writeFile } = require('node:fs/promises');
const { join } = require('path');

const ac = new AbortController();
const { signal } = ac;

// setTimeout(() => ac.abort(), 60000);

const openJson = async (path) => {
   const filePath = join('/tmp', path, 'result.json');

   try {
      const data = await readFile(filePath, 'utf-8');
      return JSON.parse(data);
   } catch (error) {
      return '';
   }
};

const saveJson = async (data) => {
   data = JSON.stringify(data, null, 3);
   writeFile('./themes/solatido-theme.json', data);
};

const process = async (event) => {
   const { filename } = event;
   const test = /jsonnet/.test(filename);

   if (!test) return;

   const data = await openJson(filename);

   if (!data) return;

   await saveJson(data);

   rm(join('/tmp', filename), { recursive: true, force: true });
};

const main = async () => {
   try {
      const watcher = watch('/tmp', { signal });
      for await (const event of watcher) {
         setTimeout(() => {
            process(event);
         }, 1000);
      }
   } catch (error) {
      if (error.name === 'AbortError') return;
      throw error;
   }
};

main();

### Translate Shell
Project website: https://github.com/soimort/translate-shell

The installation is very easy. Remember about adding *trans* to PATH dir.

The most useful things (for me of course ;p):

**Translate one word:**
`trans :fr home` <-- translate *home* into French
`trans :en pies` <-- translate *pies* into English

**Translate a sentence:**
`trans :pl "is much the same like translating a phrase"` <-- translate a sentence into Polish

**Translate multi-line sentences**
`trans :pl "My home is`
`> where my ass."` <-- translate into Polish this sentence. Just press *enter* during writing, the end of sentence is marked by *"* sign.

**Brief mode** - to see only the most relevant translation <br/>
trans -b :fr "Saluton, Mondo" <-- just add "*-b*" option

**Translate a Web Page**
trans :pl http://www.w3.org/


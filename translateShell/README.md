### Translate Shell
Project website: https://github.com/soimort/translate-shell <br/>
The installation is very easy. Remember about adding *trans* to PATH dir. <br/>
The most useful things (for me of course ;p): <br/>

**Translate one word:** <br/>
`trans :fr home` <-- translate *home* into French <br/>
`trans :en pies` <-- translate *pies* into English

**Translate a sentence:** <br/>
`trans :pl "is much the same like translating a phrase"` <-- translate a sentence into Polish

**Translate multi-line sentences** <br/>
`trans :pl "My home is
> where my ass."` <-- translate into Polish this sentence. Just press *enter* during writing, the end of sentence is marked by *"* sign. <br/>

**Brief mode** - to see only the most relevant translation <br/>
trans -b :fr "Saluton, Mondo" <-- just add "*-b*" option

**Translate a Web Page** <br/>
trans :pl http://www.w3.org/


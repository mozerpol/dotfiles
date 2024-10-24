### 1. grip
Render local readme files before sending off to GitHub. <br/>
To see README open a browser and visit http://localhost:6419

![Screenshot at 2021-07-09 13-47-27](https://user-images.githubusercontent.com/43972902/125073617-88e34000-e0bc-11eb-849b-52e1b8bf4422.png)
![Screenshot at 2021-07-09 13-48-51](https://user-images.githubusercontent.com/43972902/125073622-8a146d00-e0bc-11eb-83bc-87efbb67b815.png)

Project page: https://github.com/joeyespo/grip

### 2. VSG - VHDL Style Guide
Linter with the possibility of correcting errors in the VHDL code. I'm using it
with vim.

Github page: https://github.com/jeremiah-c-leary/vhdl-style-guide <br/>
Docs web: https://vhdl-style-guide.readthedocs.io/en/latest/gallery.html

#### How to use it?
Main commands that are used by me: <br/>
1. `vsg -f file_name.vhd` <br/>
2. `vsg -f file_name.vhd --fix` <br/>

I found nice website about good practices in VHDL
[last access date 22.11.2021]: https://g2384.github.io/VHDLFormatter/

### 3. **logisim-evolution** <br/>
Github page: https://github.com/logisim-evolution/logisim-evolution

#### How to run logisim?
After unpacking *./gradlew run*, user doesn't matter.

To run simulation for vhdl 2008 (not 93 by default) change files: <br/>
1. src/main/resources/resources/logisim/sim/comp.templ <br/>
Add *-2008*, so should be: <br/>
```
# Compile top sim
if {[catch {vcom -2008 -reportprogress 300 -work work ../src/top_sim.vhdl} errmsg]} {
  puts "Compilation error: $errmsg"
  exit
}
```
2. src/main/java/com/cburch/logisim/vhdl/base/VhdlSimConstants.java <br/>
The same as above (add *-2008*), so should be (it's only a small part of
file...):

```
  public static final String VHDL_COMPILE_COMMAND = "vcom -2008 -reportprogress 300 -work work ../src/";
  public static final VhdlSimNameAttribute SIM_NAME_ATTR =
      new VhdlSimNameAttribute("vhdlSimName", S.getter("vhdlSimName"));
}
```
3. src/main/java/com/cburch/logisim/util/Softwares.java <br/>
Add only a part with *command.add("-2008");*, so should be sth like this: <br/>
```
      List<String> command = new ArrayList<>();
      command.add(FileUtil.correctPath(questaPath) + QUESTA_BIN[VCOM]);
      command.add("-2008");
      command.add("-quiet");
      command.add("-work");
      command.add("work");
      command.add(tmp.getName());
```

Important rule to run VHDL code: must be somewhere *top_sim* instance, modelsim
is looking it to run simulation. <br/>

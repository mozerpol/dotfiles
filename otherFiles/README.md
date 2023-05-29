### 1. grip
Render local readme files before sending off to GitHub. <br/>
Just go to your folder where you have README.md file and run *grip*. Now open
a browser and visit http://localhost:6419

![Screenshot at 2021-07-09 13-47-27](https://user-images.githubusercontent.com/43972902/125073617-88e34000-e0bc-11eb-849b-52e1b8bf4422.png)
![Screenshot at 2021-07-09 13-48-51](https://user-images.githubusercontent.com/43972902/125073622-8a146d00-e0bc-11eb-83bc-87efbb67b815.png)

Project page: https://github.com/joeyespo/grip

### 2. VSG - VHDL Style Guide
Linter with the possibility of correcting errors in the VHDL code. I'm using it
with vim, but you can use it with any editor. <br/>
Github page: https://github.com/jeremiah-c-leary/vhdl-style-guide <br/>
Docs web: https://vhdl-style-guide.readthedocs.io/en/latest/gallery.html

##### How to install?  <br/>
Go to any dir, e.g *~/Downloads* <br/>
`git clone https://github.com/jeremiah-c-leary/vhdl-style-guide.git` <br/>
After this: <br/>
`sudo python setup.py install`

##### How to use it? <br/>
Suppose we have such code, which is called *design.vhd*: <br/>
```VHDL
library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is port(
  a: in std_logic;
  b: in std_logic;
  c: out std_logic
);
end and_gate;

architecture rtl of and_gate is
  begin
    process(a, b) is begin
      c <= a and b;
    end process;
end rtl;
```

Main commands that are used by me: <br/>
1. `vsg -f file_name.vhd` <br/>
When we run command in terminal: `vsg -f design.vhd` <br/> we'll receive: <br/>
![image](https://user-images.githubusercontent.com/43972902/142878727-9a11cfa8-1300-48aa-b6ab-9bc4d869c003.png)

2. `vsg -f file_name.vhd --fix` <br/>
As previously, suppose we have the same code, which is called *design.vhd*: <br/>
When we run command in terminal: `vsg -f design.vhd --fix`, we'll receive: <br/>
![image](https://user-images.githubusercontent.com/43972902/142880123-11348334-524e-495a-956d-30212cf6dca8.png) <br/>
And code will change to: <br/>
```VHDL
library IEEE;
  use IEEE.std_logic_1164.all;

entity and_gate is port (
    a : in    std_logic;
    b : in    std_logic;
    c : out   std_logic
  );
end entity and_gate;

architecture rtl of and_gate is

begin

  process (a, b) is
  begin

    c <= a and b;

  end process;

end architecture rtl;
```

Also I found nice website, we can find out more about good practices in VHDL
[last access date 22.11.2021]: https://g2384.github.io/VHDLFormatter/

3.  **logisim-evolution** <br/>
https://github.com/logisim-evolution/logisim-evolution

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
The same as above (add *-2008*), so should be (it's only a small part of file...): <br/>
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
How to run logisim? After unpacking just *./gradlew run*, user doesn't matter.

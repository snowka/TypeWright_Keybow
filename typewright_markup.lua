require "keybow"

-- Frequently-used markup tags for Typewright. --

-- Key mappings --
function handle_key_00(pressed)
    if pressed then
        keybow.text([[<fw type=“pageNum”>…</fw>]])
    end
end

-- Insert signature mark tag --
function handle_key_01(pressed)
    if pressed then
        keybow.text([[<fw type=“sig”>…</fw>]])
    end
end

-- Insert catchword tag --
function handle_key_02(pressed)
    if pressed then
        keybow.text([[<fw type=“catch”>…</fw>]])
    end
end

-- Insert line below --
function handle_key_03(pressed)
    if pressed then
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
        keybow.tap_key("I", pressed)
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
    end
end

-- Insert page header tag --
function handle_key_04(pressed)
    if pressed then
        keybow.text([[<fw type=“header”>…</fw>]])
    end
end

-- Go down one line --
function handle_key_05(pressed)
   keybow.set_key(keybow.DOWN_ARROW, pressed)
end

-- Insert line above --
function handle_key_06(pressed)
    if pressed then
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
         keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_DOWN)       
        keybow.tap_key("I", pressed)
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
         keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_UP)  
    end
end

-- Illegible character --
function handle_key_07(pressed)
    if pressed then
        keybow.text([[@]])
    end
end

-- Go up one line --
function handle_key_08(pressed)
   keybow.set_key(keybow.UP_ARROW, pressed)
end  

-- Delete the line --
function handle_key_09(pressed)
    if pressed then
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
        keybow.tap_key(keybow.DELETE, pressed)
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
    end
end

-- Insert italics tag --
function handle_key_10(pressed)
    if pressed then
        keybow.text([[<hi rend=“italic”>…</hi>]])
    end
end

-- Asset the line is correct --
function handle_key_11(pressed) 
    if pressed then
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
        keybow.tap_key(keybow.ENTER, pressed)
        keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
    end
end

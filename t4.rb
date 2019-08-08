#!/usr/bin/ruby
# frozen_string_literal: true

# Import the library.
require 'tk'

# Root window.
root = TkRoot.new do
  title 'Push Me'
  background '#111188'
end

# Add a label to the root window.
lab = TkLabel.new(root) do
  text "Hey there,\nPush a button!"
  background '#3333AA'
  foreground '#CCCCFF'
end

# Make it appear.
lab.pack('side' => 'left', 'fill' => 'both')

class TwoLabs < TkFrame
  # Switch button colors.
  def cswap
    # Swap each color between the two buttons.
    %w[background foreground activebackground].each do |loc|
      c = @swapbut.cget(loc)
      @swapbut.configure(loc => @stopbut.cget(loc))
      @stopbut.configure(loc => c)
    end
  end

  def initialize
    super

    # Here's a button.  I can't get the command setting to work
    # inside the block, since the self (apparently) becomes the TkButton,
    # not us.
    @swapbut = TkButton.new(self, 'command' => proc { cswap }) do
      text 'Swap'
      background '#EECCCC'
      activebackground '#FFEEEE'
      foreground '#990000'
      pack('side' => 'top', 'fill' => 'both')
    end

    # Another button
    @stopbut = TkButton.new(self) do
      text 'Exit'
      background '#CCEECC'
      activebackground '#EEFFEE'
      foreground '#009900'
      command { exit }
      pack('side' => 'bottom', 'fill' => 'both')
    end
  end
end

# A frame can be used to arrange buttons with the packer.
tl = TwoLabs.new
tl.pack('side' => 'right', 'fill' => 'both')

Tk.mainloop

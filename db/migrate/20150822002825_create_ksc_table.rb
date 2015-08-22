class CreateKscTable < ActiveRecord::Migration
  def change
    create_table :kepler_targets do |t|
      t.integer	"kepid"
      t.string	"tm_designation"
      t.integer	"nkoi"
      t.float	"kepmag"
      t.integer	"teff"
      t.float	"logg"
      t.float	"feh"
      t.float	"radius"
      t.float	"mass"
      t.float	"dens"
      t.float	"jmag"
      t.float	"hmag"
      t.float	"kmag"
      t.float	"ukirtj"
      t.float	"i1mag"
      t.float	"i1unc"
      t.float	"i2mag"
      t.float	"i2unc"
      t.integer	"i1obs"
      t.integer	"i2obs"
      t.float	"i1i2color"
      t.float	"ji2color"
      t.float	"w1mag"
      t.float	"w1unc"
      t.float	"w2mag"
      t.float	"w2unc"
    end
  end
end

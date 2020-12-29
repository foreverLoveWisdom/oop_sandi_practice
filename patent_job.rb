# What may go wrong with this class?
# What if the ftp host/login/password changes?
# What if I need to create another job like this?
# In sum, it is not easy to change

# It downloads the file AND it updates into the db
# The word AND can give me a hint to move out the download functionality into a separate class
# Then, my test will run faster cuz now I can mock it the download object
# Now, I can use dependency injection to pass in the download object

class PatentJob
  def run
    temp = download_file
    rows = parse(temp)
    update_patents(rows)
  end

  def download_file; end

  def parse(temp); end

  def update_patents(rows); end
end

# Objectives
- Build a Sinatra CRUD app consisting of at least two related models

## Deliverables

- Build a Many To Many Relationship.  You should have full CRUD capabilities for the two joined models (not necessarily the join table)
    Owners
        has_many :owner_dogs
        has_many :dogs, through: :owner_dogs
    Daycare
    Dog
- Your URL endpoints should follow RESTful conventions
- Build a home page (at "/")
- Build an "About" page (separate from your homepage) that talks about your app
- Be sure to have links that let your user move around--they should never have to type in a URL
- Be creative!  Push yourselves to learn new things.

- <h3>Do not cut and paste code.</h3>

# TODO

## Admin Functions

* Can lock users to only sign up using an email with an authorized domain name which can be configured by a site admin

* Site admin can add or remove them from an ERG

## ERGs

* Users can see who's in a what erg

* User can join or leave ERGs

* Only site admins or designated people in an ERG can change that ERG's information

* Need paging on user list

* A user will always join at the global level but can also join a local chapter. Joining local chapter is optional because some locations might not have one.

* Can only delete ERGs if they have no members, events, or other associated records. If associated records can only mark the ERG inactive.

## Events

* Events can be sponsored by more than one ERG

* Each ERG that sponsors an Event can track it's own budget

* Events are owned by the user who created it if they do not specify another user. An event assignment can be rejected (tracked in an assignment table.)

* Events can have Tags for categorization

* Search by event name, ERG, date, date range, description, tags

* Email participants the event calendar invite

* Event organizers can email participants updates outside the event calendar invite

* Deleting Events emails or otherwise notifies everyone that has RSVP'd

## Users

* Can change passwords while logged into the site

* Can reset a password if they forgot it. System will create a 30 min token and email the user the link.

* Can change display name

* For now, cannot change username

* Search for users by username, display name, nickname

* Need to figure out rules for deleting users.  If they have posts, own events, etc. deletion will screw it up. Maybe just mark as "inactive_user_id" and keep all posts?





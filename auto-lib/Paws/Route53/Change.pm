package Paws::Route53::Change;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has ResourceRecordSet => (is => 'ro', isa => 'Paws::Route53::ResourceRecordSet', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::Change

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::Change object:

  $service_obj->Method(Att1 => { Action => $value, ..., ResourceRecordSet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::Change object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The information for each resource record set that you want to change.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  The action to perform:

=over

=item *

C<CREATE>: Creates a resource record set that has the specified values.

=item *

C<DELETE>: Deletes a existing resource record set.

To delete the resource record set that is associated with a traffic
policy instance, use C< DeleteTrafficPolicyInstance >. Amazon Route 53
will delete the resource record set automatically. If you delete the
resource record set by using C<ChangeResourceRecordSets>, Route 53
doesn't automatically delete the traffic policy instance, and you'll
continue to be charged for it even though it's no longer in use.

=item *

C<UPSERT>: If a resource record set doesn't already exist, Route 53
creates it. If a resource record set does exist, Route 53 updates it
with the values in the request.

=back



=head2 B<REQUIRED> ResourceRecordSet => L<Paws::Route53::ResourceRecordSet>

  Information about the resource record set to create, delete, or update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


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

A complex type that contains the information for each change in a
change batch request.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Action => Str

  The action to perform.

Valid values: C<CREATE> | C<DELETE> | C<UPSERT>

=head2 B<REQUIRED> ResourceRecordSet => L<Paws::Route53::ResourceRecordSet>

  Information about the resource record set to create or delete.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


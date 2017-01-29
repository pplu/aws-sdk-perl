package Paws::CloudDirectory::PolicyAttachment;
  use Moose;
  has ObjectIdentifier => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::PolicyAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::PolicyAttachment object:

  $service_obj->Method(Att1 => { ObjectIdentifier => $value, ..., PolicyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::PolicyAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectIdentifier

=head1 DESCRIPTION

Contains the PolicyType, PolicyId, and the ObjectIdentifier to which it
is attached.

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

  The ObjectIdentifier associated with PolicyAttachment.


=head2 PolicyId => Str

  The ID of PolicyAttachment.


=head2 PolicyType => Str

  The type of policy that can be associated with PolicyAttachment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


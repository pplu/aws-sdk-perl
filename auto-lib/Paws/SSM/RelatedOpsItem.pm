package Paws::SSM::RelatedOpsItem;
  use Moose;
  has OpsItemId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RelatedOpsItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::RelatedOpsItem object:

  $service_obj->Method(Att1 => { OpsItemId => $value, ..., OpsItemId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::RelatedOpsItem object:

  $result = $service_obj->Method(...);
  $result->Att1->OpsItemId

=head1 DESCRIPTION

An OpsItems that shares something in common with the current OpsItem.
For example, related OpsItems can include OpsItems with similar error
messages, impacted resources, or statuses for the impacted resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpsItemId => Str

  The ID of an OpsItem related to the current OpsItem.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


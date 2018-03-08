package Paws::ServiceCatalog::ResourceChangeDetail;
  use Moose;
  has CausingEntity => (is => 'ro', isa => 'Str');
  has Evaluation => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::ServiceCatalog::ResourceTargetDefinition');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ResourceChangeDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ResourceChangeDetail object:

  $service_obj->Method(Att1 => { CausingEntity => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ResourceChangeDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CausingEntity

=head1 DESCRIPTION

Information about a change to a resource attribute.

=head1 ATTRIBUTES


=head2 CausingEntity => Str

  The ID of the entity that caused the change.


=head2 Evaluation => Str

  For static evaluations, the value of the resource attribute will change
and the new value is known. For dynamic evaluations, the value might
change, and any new value will be determined when the plan is updated.


=head2 Target => L<Paws::ServiceCatalog::ResourceTargetDefinition>

  Information about the resource attribute to be modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::Comprehend::BatchDetectEntitiesItemResult;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Entity]');
  has Index => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectEntitiesItemResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::BatchDetectEntitiesItemResult object:

  $service_obj->Method(Att1 => { Entities => $value, ..., Index => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::BatchDetectEntitiesItemResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Entities

=head1 DESCRIPTION

The result of calling the operation. The operation returns one object
for each document that is successfully processed by the operation.

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::Comprehend::Entity>]

  One or more Entity objects, one for each entity detected in the
document.


=head2 Index => Int

  The zero-based index of the document in the input list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


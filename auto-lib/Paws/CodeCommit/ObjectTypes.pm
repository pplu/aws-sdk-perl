package Paws::CodeCommit::ObjectTypes;
  use Moose;
  has Base => (is => 'ro', isa => 'Str', request_name => 'base', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Str', request_name => 'source', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ObjectTypes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ObjectTypes object:

  $service_obj->Method(Att1 => { Base => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ObjectTypes object:

  $result = $service_obj->Method(...);
  $result->Att1->Base

=head1 DESCRIPTION

Information about the type of an object in a merge operation.

=head1 ATTRIBUTES


=head2 Base => Str

  The type of the object in the base commit of the merge.


=head2 Destination => Str

  The type of the object in the destination branch.


=head2 Source => Str

  The type of the object in the source branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


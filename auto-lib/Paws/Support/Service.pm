package Paws::Support::Service;
  use Moose;
  has Categories => (is => 'ro', isa => 'ArrayRef[Paws::Support::Category]', request_name => 'categories', traits => ['NameInRequest']);
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::Service object:

  $service_obj->Method(Att1 => { Categories => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->Categories

=head1 DESCRIPTION

Information about an AWS service returned by the DescribeServices
operation.

=head1 ATTRIBUTES


=head2 Categories => ArrayRef[L<Paws::Support::Category>]

  A list of categories that describe the type of support issue a case
describes. Categories consist of a category name and a category code.
Category names and codes are passed to AWS Support when you call
CreateCase.


=head2 Code => Str

  The code for an AWS service returned by the DescribeServices response.
The C<name> element contains the corresponding friendly name.


=head2 Name => Str

  The friendly name for an AWS service. The C<code> element contains the
corresponding code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


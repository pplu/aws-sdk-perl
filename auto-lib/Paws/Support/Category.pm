package Paws::Support::Category;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::Category

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::Category object:

  $service_obj->Method(Att1 => { Code => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::Category object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

A JSON-formatted name/value pair that represents the category name and
category code of the problem, selected from the DescribeServices
response for each AWS service.

=head1 ATTRIBUTES


=head2 Code => Str

  The category code for the support case.


=head2 Name => Str

  The category name for the support case.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


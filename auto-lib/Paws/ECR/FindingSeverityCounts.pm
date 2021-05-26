package Paws::ECR::FindingSeverityCounts;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has CRITICAL => (is => 'ro', isa => 'Int');
  has HIGH => (is => 'ro', isa => 'Int');
  has INFORMATIONAL => (is => 'ro', isa => 'Int');
  has LOW => (is => 'ro', isa => 'Int');
  has MEDIUM => (is => 'ro', isa => 'Int');
  has UNDEFINED => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::FindingSeverityCounts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::FindingSeverityCounts object:

  $service_obj->Method(Att1 => { CRITICAL => $value, ..., UNDEFINED => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::FindingSeverityCounts object:

  $result = $service_obj->Method(...);
  $result->Att1->CRITICAL

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CRITICAL => Int


=head2 HIGH => Int


=head2 INFORMATIONAL => Int


=head2 LOW => Int


=head2 MEDIUM => Int


=head2 UNDEFINED => Int



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


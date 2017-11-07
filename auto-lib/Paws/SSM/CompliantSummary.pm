package Paws::SSM::CompliantSummary;
  use Moose;
  has CompliantCount => (is => 'ro', isa => 'Int');
  has SeveritySummary => (is => 'ro', isa => 'Paws::SSM::SeveritySummary');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CompliantSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::CompliantSummary object:

  $service_obj->Method(Att1 => { CompliantCount => $value, ..., SeveritySummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CompliantSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CompliantCount

=head1 DESCRIPTION

A summary of resources that are compliant. The summary is organized
according to the resource count for each compliance type.

=head1 ATTRIBUTES


=head2 CompliantCount => Int

  The total number of resources that are compliant.


=head2 SeveritySummary => L<Paws::SSM::SeveritySummary>

  A summary of the compliance severity by compliance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


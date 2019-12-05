package Paws::ComputeOptimizer::GetRecommendationError;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Identifier => (is => 'ro', isa => 'Str', request_name => 'identifier', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRecommendationError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::GetRecommendationError object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::GetRecommendationError object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Describes an error experienced when getting recommendations.

For example, an error is returned if you request recommendations for an
unsupported Auto Scaling group, or if you request recommendations for
an instance of an unsupported instance family.

=head1 ATTRIBUTES


=head2 Code => Str

  The error code.


=head2 Identifier => Str

  The ID of the error.


=head2 Message => Str

  The message, or reason, for the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


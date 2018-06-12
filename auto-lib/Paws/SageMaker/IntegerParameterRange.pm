package Paws::SageMaker::IntegerParameterRange;
  use Moose;
  has MaxValue => (is => 'ro', isa => 'Str', required => 1);
  has MinValue => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::IntegerParameterRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::IntegerParameterRange object:

  $service_obj->Method(Att1 => { MaxValue => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::IntegerParameterRange object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxValue

=head1 DESCRIPTION

For a hyperparameter of the integer type, specifies the range that a
hyperparameter tuning job searches.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxValue => Str

  The maximum value of the hyperparameter to search.


=head2 B<REQUIRED> MinValue => Str

  The minimum value of the hyperparameter to search.


=head2 B<REQUIRED> Name => Str

  The name of the hyperparameter to search.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


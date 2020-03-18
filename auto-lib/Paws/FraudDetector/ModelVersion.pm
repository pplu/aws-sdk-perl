package Paws::FraudDetector::ModelVersion;
  use Moose;
  has ModelId => (is => 'ro', isa => 'Str', request_name => 'modelId', traits => ['NameInRequest'], required => 1);
  has ModelType => (is => 'ro', isa => 'Str', request_name => 'modelType', traits => ['NameInRequest'], required => 1);
  has ModelVersionNumber => (is => 'ro', isa => 'Str', request_name => 'modelVersionNumber', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ModelVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::ModelVersion object:

  $service_obj->Method(Att1 => { ModelId => $value, ..., ModelVersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::ModelVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->ModelId

=head1 DESCRIPTION

The model version.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelId => Str

  The parent model ID.


=head2 B<REQUIRED> ModelType => Str

  The model type.


=head2 B<REQUIRED> ModelVersionNumber => Str

  The model version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


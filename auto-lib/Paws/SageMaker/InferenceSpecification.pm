# Generated from default/object.tt
package Paws::SageMaker::InferenceSpecification;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::SageMaker::Types qw/SageMaker_ModelPackageContainerDefinition/;
  has Containers => (is => 'ro', isa => ArrayRef[SageMaker_ModelPackageContainerDefinition], required => 1);
  has SupportedContentTypes => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has SupportedRealtimeInferenceInstanceTypes => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has SupportedResponseMIMETypes => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has SupportedTransformInstanceTypes => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SupportedRealtimeInferenceInstanceTypes' => {
                                                              'type' => 'ArrayRef[Str|Undef]'
                                                            },
               'SupportedResponseMIMETypes' => {
                                                 'type' => 'ArrayRef[Str|Undef]'
                                               },
               'SupportedContentTypes' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          },
               'SupportedTransformInstanceTypes' => {
                                                      'type' => 'ArrayRef[Str|Undef]'
                                                    },
               'Containers' => {
                                 'type' => 'ArrayRef[SageMaker_ModelPackageContainerDefinition]',
                                 'class' => 'Paws::SageMaker::ModelPackageContainerDefinition'
                               }
             },
  'IsRequired' => {
                    'Containers' => 1,
                    'SupportedTransformInstanceTypes' => 1,
                    'SupportedContentTypes' => 1,
                    'SupportedResponseMIMETypes' => 1,
                    'SupportedRealtimeInferenceInstanceTypes' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::InferenceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::InferenceSpecification object:

  $service_obj->Method(Att1 => { Containers => $value, ..., SupportedTransformInstanceTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::InferenceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Containers

=head1 DESCRIPTION

Defines how to perform inference generation after a training job is
run.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Containers => ArrayRef[SageMaker_ModelPackageContainerDefinition]

  The Amazon ECR registry path of the Docker image that contains the
inference code.


=head2 B<REQUIRED> SupportedContentTypes => ArrayRef[Str|Undef]

  The supported MIME types for the input data.


=head2 B<REQUIRED> SupportedRealtimeInferenceInstanceTypes => ArrayRef[Str|Undef]

  A list of the instance types that are used to generate inferences in
real-time.


=head2 B<REQUIRED> SupportedResponseMIMETypes => ArrayRef[Str|Undef]

  The supported MIME types for the output data.


=head2 B<REQUIRED> SupportedTransformInstanceTypes => ArrayRef[Str|Undef]

  A list of the instance types on which a transformation job can be run
or on which an endpoint can be deployed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


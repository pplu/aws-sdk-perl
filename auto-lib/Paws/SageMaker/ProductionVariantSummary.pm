# Generated from default/object.tt
package Paws::SageMaker::ProductionVariantSummary;
  use Moo;
  use Types::Standard qw/Int Num ArrayRef Str/;
  use Paws::SageMaker::Types qw/SageMaker_DeployedImage/;
  has CurrentInstanceCount => (is => 'ro', isa => Int);
  has CurrentWeight => (is => 'ro', isa => Num);
  has DeployedImages => (is => 'ro', isa => ArrayRef[SageMaker_DeployedImage]);
  has DesiredInstanceCount => (is => 'ro', isa => Int);
  has DesiredWeight => (is => 'ro', isa => Num);
  has VariantName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CurrentWeight' => {
                                    'type' => 'Num'
                                  },
               'VariantName' => {
                                  'type' => 'Str'
                                },
               'DesiredWeight' => {
                                    'type' => 'Num'
                                  },
               'CurrentInstanceCount' => {
                                           'type' => 'Int'
                                         },
               'DesiredInstanceCount' => {
                                           'type' => 'Int'
                                         },
               'DeployedImages' => {
                                     'class' => 'Paws::SageMaker::DeployedImage',
                                     'type' => 'ArrayRef[SageMaker_DeployedImage]'
                                   }
             },
  'IsRequired' => {
                    'VariantName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProductionVariantSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProductionVariantSummary object:

  $service_obj->Method(Att1 => { CurrentInstanceCount => $value, ..., VariantName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProductionVariantSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentInstanceCount

=head1 DESCRIPTION

Describes weight and capacities for a production variant associated
with an endpoint. If you sent a request to the
C<UpdateEndpointWeightsAndCapacities> API and the endpoint status is
C<Updating>, you get different desired and current values.

=head1 ATTRIBUTES


=head2 CurrentInstanceCount => Int

  The number of instances associated with the variant.


=head2 CurrentWeight => Num

  The weight associated with the variant.


=head2 DeployedImages => ArrayRef[SageMaker_DeployedImage]

  An array of C<DeployedImage> objects that specify the Amazon EC2
Container Registry paths of the inference images deployed on instances
of this C<ProductionVariant>.


=head2 DesiredInstanceCount => Int

  The number of instances requested in the
C<UpdateEndpointWeightsAndCapacities> request.


=head2 DesiredWeight => Num

  The requested weight, as specified in the
C<UpdateEndpointWeightsAndCapacities> request.


=head2 B<REQUIRED> VariantName => Str

  The name of the variant.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


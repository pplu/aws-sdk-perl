# Generated from default/object.tt
package Paws::SageMaker::VpcConfig;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::SageMaker::Types qw//;
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has Subnets => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Subnets' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             },
  'IsRequired' => {
                    'SecurityGroupIds' => 1,
                    'Subnets' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::VpcConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::VpcConfig object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., Subnets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::VpcConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

Specifies a VPC that your training jobs and hosted models have access
to. Control access to and from your training and model containers by
configuring the VPC. For more information, see Protect Endpoints by
Using an Amazon Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html) and
Protect Training Jobs by Using an Amazon Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

  The VPC security group IDs, in the form sg-xxxxxxxx. Specify the
security groups for the VPC that is specified in the C<Subnets> field.


=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

  The ID of the subnets in the VPC to which you want to connect your
training job or model.

Amazon EC2 P3 accelerated computing instances are not available in the
c/d/e availability zones of region us-east-1. If you want to create
endpoints with P3 instances in VPC mode in region us-east-1, create
subnets in a/b/f availability zones instead.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


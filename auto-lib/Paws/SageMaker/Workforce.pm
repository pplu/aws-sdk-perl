package Paws::SageMaker::Workforce;
  use Moose;
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has SourceIpConfig => (is => 'ro', isa => 'Paws::SageMaker::SourceIpConfig');
  has WorkforceArn => (is => 'ro', isa => 'Str', required => 1);
  has WorkforceName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Workforce

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Workforce object:

  $service_obj->Method(Att1 => { LastUpdatedDate => $value, ..., WorkforceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Workforce object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdatedDate

=head1 DESCRIPTION

A single private workforce, which is automatically created when you
create your first private work team. You can create one private work
force in each AWS Region. By default, any workforce related API
operation used in a specific region will apply to the workforce created
in that region. To learn how to create a private workforce, see Create
a Private Workforce
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html).

=head1 ATTRIBUTES


=head2 LastUpdatedDate => Str

  The most recent date that was used to successfully add one or more IP
address ranges (CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)) to
a private workforce's allow list.


=head2 SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>

  A list of one to four IP address ranges (CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)) to
be added to the workforce allow list.


=head2 B<REQUIRED> WorkforceArn => Str

  The Amazon Resource Name (ARN) of the private workforce.


=head2 B<REQUIRED> WorkforceName => Str

  The name of the private workforce whose access you want to restrict.
C<WorkforceName> is automatically set to C<"default"> when a workforce
is created and cannot be modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


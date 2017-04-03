
package Paws::SSM::CreateAssociation;
  use Moose;
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociation - Arguments for method CreateAssociation on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssociation on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method CreateAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssociation.

As an example:

  $service_obj->CreateAssociation(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DocumentVersion => Str

The document version you want to associate with the target(s). Can be a
specific version or the default version.



=head2 InstanceId => Str

The instance ID.



=head2 B<REQUIRED> Name => Str

The name of the Systems Manager document.



=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

An Amazon S3 bucket where you want to store the output details of the
request. For example:

C<"{ \"S3Location\": { \"OutputS3Region\": \"E<lt>regionE<gt>\",
\"OutputS3BucketName\": \"bucket name\", \"OutputS3KeyPrefix\":
\"folder name\" } }">



=head2 Parameters => L<Paws::SSM::Parameters>

The parameters for the documents runtime configuration.



=head2 ScheduleExpression => Str

A cron expression when the association will be applied to the
target(s). Supported expressions are every half, 1, 2, 4, 8 or 12
hour(s); every specified day and time of the week. For example: cron(0
0/30 * 1/1 * ? *) to run every thirty minutes; cron(0 0 0/4 1/1 * ? *)
to run every four hours; and cron(0 0 10 ? * SUN *) to run every Sunday
at 10 a.m.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets (either instances or tags) for the association. Instances
are specified using
Key=instanceids,Values=E<lt>instanceid1E<gt>,E<lt>instanceid2E<gt>.
Tags are specified using Key=E<lt>tag nameE<gt>,Values=E<lt>tag
valueE<gt>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


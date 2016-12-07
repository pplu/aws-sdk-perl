
package Paws::SSM::UpdateAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateAssociation - Arguments for method UpdateAssociation on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssociation on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method UpdateAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssociation.

As an example:

  $service_obj->UpdateAssociation(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the association you want to update.



=head2 DocumentVersion => Str

The document version you want update for the association.



=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

An Amazon S3 bucket where you want to store the results of this
request.

C<"{ \"S3Location\": { \"OutputS3Region\": \"E<lt>regionE<gt>\",
\"OutputS3BucketName\": \"bucket name\", \"OutputS3KeyPrefix\":
\"folder name\" } }">



=head2 Parameters => L<Paws::SSM::Parameters>

The parameters you want to update for the association. If you create a
parameter using Parameter Store, you can reference the parameter using
{{ssm:parameter-name}}



=head2 ScheduleExpression => Str

The cron expression used to schedule the association that you want to
update. Supported expressions are every half, 1, 2, 4, 8 or 12 hour(s);
every specified day and time of the week. For example: cron(0 0/30 *
1/1 * ? *) to run every thirty minutes; cron(0 0 0/4 1/1 * ? *) to run
every four hours; and cron(0 0 10 ? * SUN *) to run every Sunday at 10
a.m.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


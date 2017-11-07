
package Paws::KinesisAnalytics::AddApplicationInput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has Input => (is => 'ro', isa => 'Paws::KinesisAnalytics::Input', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationInput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::AddApplicationInputResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::AddApplicationInput - Arguments for method AddApplicationInput on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationInput on the 
Amazon Kinesis Analytics service. Use the attributes of this class
as arguments to method AddApplicationInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationInput.

As an example:

  $service_obj->AddApplicationInput(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of your existing Amazon Kinesis Analytics application to which you
want to add the streaming source.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

Current version of your Amazon Kinesis Analytics application. You can
use the DescribeApplication operation to find the current application
version.



=head2 B<REQUIRED> Input => L<Paws::KinesisAnalytics::Input>

The Input to add.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationInput in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


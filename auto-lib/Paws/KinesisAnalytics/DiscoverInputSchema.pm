
package Paws::KinesisAnalytics::DiscoverInputSchema;
  use Moose;
  has InputStartingPositionConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalytics::InputStartingPositionConfiguration', required => 1);
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DiscoverInputSchema');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::DiscoverInputSchemaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DiscoverInputSchema - Arguments for method DiscoverInputSchema on Paws::KinesisAnalytics

=head1 DESCRIPTION

This class represents the parameters used for calling the method DiscoverInputSchema on the 
Amazon Kinesis Analytics service. Use the attributes of this class
as arguments to method DiscoverInputSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DiscoverInputSchema.

As an example:

  $service_obj->DiscoverInputSchema(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputStartingPositionConfiguration => L<Paws::KinesisAnalytics::InputStartingPositionConfiguration>

Point at which you want Amazon Kinesis Analytics to start reading
records from the specified streaming source discovery purposes.



=head2 B<REQUIRED> ResourceARN => Str

Amazon Resource Name (ARN) of the streaming source.



=head2 B<REQUIRED> RoleARN => Str

ARN of the IAM role that Amazon Kinesis Analytics can assume to access
the stream on your behalf.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscoverInputSchema in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


package Paws::IoT::KinesisAction;
  use Moose;
  has partitionKey => (is => 'ro', isa => 'Str');
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
  has streamName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::KinesisAction

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::KinesisAction object:

  $service_obj->Method(Att1 => { partitionKey => $value, ..., streamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::KinesisAction object:

  $result = $service_obj->Method(...);
  $result->Att1->partitionKey

=head1 ATTRIBUTES

=head2 partitionKey => Str

  

The partition key.










=head2 B<REQUIRED> roleArn => Str

  

The ARN of the IAM role that grants access.










=head2 B<REQUIRED> streamName => Str

  

The name of the Kinesis stream.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


# Generated from default/object.tt
package Paws::IoT::KinesisAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has PartitionKey => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has StreamName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'PartitionKey' => {
                                   'type' => 'Str'
                                 },
               'StreamName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'PartitionKey' => 'partitionKey',
                       'StreamName' => 'streamName'
                     },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'StreamName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::KinesisAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::KinesisAction object:

  $service_obj->Method(Att1 => { PartitionKey => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::KinesisAction object:

  $result = $service_obj->Method(...);
  $result->Att1->PartitionKey

=head1 DESCRIPTION

Describes an action to write data to an Amazon Kinesis stream.

=head1 ATTRIBUTES


=head2 PartitionKey => Str

  The partition key.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the IAM role that grants access to the Amazon Kinesis
stream.


=head2 B<REQUIRED> StreamName => Str

  The name of the Amazon Kinesis stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


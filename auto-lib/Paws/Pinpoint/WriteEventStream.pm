# Generated from default/object.tt
package Paws::Pinpoint::WriteEventStream;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has DestinationStreamArn => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'DestinationStreamArn' => {
                                           'type' => 'Str'
                                         }
             },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'DestinationStreamArn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteEventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteEventStream object:

  $service_obj->Method(Att1 => { DestinationStreamArn => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteEventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationStreamArn

=head1 DESCRIPTION

Specifies the Amazon Resource Name (ARN) of an event stream to publish
events to and the AWS Identity and Access Management (IAM) role to use
when publishing those events.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationStreamArn => Str

  The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or
Amazon Kinesis Data Firehose delivery stream that you want to publish
event data to.

For a Kinesis data stream, the ARN format is:
arn:aws:kinesis:region:account-id:stream/stream_name

For a Kinesis Data Firehose delivery stream, the ARN format is:
arn:aws:firehose:region:account-id:deliverystream/stream_name


=head2 B<REQUIRED> RoleArn => Str

  The AWS Identity and Access Management (IAM) role that authorizes
Amazon Pinpoint to publish event data to the stream in your AWS
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


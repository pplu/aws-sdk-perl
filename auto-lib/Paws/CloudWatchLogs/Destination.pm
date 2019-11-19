# Generated from default/object.tt
package Paws::CloudWatchLogs::Destination;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudWatchLogs::Types qw//;
  has AccessPolicy => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Int);
  has DestinationName => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has TargetArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessPolicy' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'TargetArn' => {
                                'type' => 'Str'
                              },
               'DestinationName' => {
                                      'type' => 'Str'
                                    },
               'CreationTime' => {
                                   'type' => 'Int'
                                 },
               'RoleArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'AccessPolicy' => 'accessPolicy',
                       'TargetArn' => 'targetArn',
                       'Arn' => 'arn',
                       'DestinationName' => 'destinationName',
                       'CreationTime' => 'creationTime',
                       'RoleArn' => 'roleArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::Destination object:

  $service_obj->Method(Att1 => { AccessPolicy => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicy

=head1 DESCRIPTION

Represents a cross-account destination that receives subscription log
events.

=head1 ATTRIBUTES


=head2 AccessPolicy => Str

  An IAM policy document that governs which AWS accounts can create
subscription filters against this destination.


=head2 Arn => Str

  The ARN of this destination.


=head2 CreationTime => Int

  The creation time of the destination, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 DestinationName => Str

  The name of the destination.


=head2 RoleArn => Str

  A role for impersonation, used when delivering log events to the
target.


=head2 TargetArn => Str

  The Amazon Resource Name (ARN) of the physical target to where the log
events are delivered (for example, a Kinesis stream).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


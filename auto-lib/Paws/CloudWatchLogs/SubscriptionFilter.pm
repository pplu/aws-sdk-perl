# Generated from default/object.tt
package Paws::CloudWatchLogs::SubscriptionFilter;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::CloudWatchLogs::Types qw//;
  has CreationTime => (is => 'ro', isa => Int);
  has DestinationArn => (is => 'ro', isa => Str);
  has Distribution => (is => 'ro', isa => Str);
  has FilterName => (is => 'ro', isa => Str);
  has FilterPattern => (is => 'ro', isa => Str);
  has LogGroupName => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationArn' => {
                                     'type' => 'Str'
                                   },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'FilterPattern' => {
                                    'type' => 'Str'
                                  },
               'FilterName' => {
                                 'type' => 'Str'
                               },
               'CreationTime' => {
                                   'type' => 'Int'
                                 },
               'Distribution' => {
                                   'type' => 'Str'
                                 },
               'LogGroupName' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'FilterPattern' => 'filterPattern',
                       'RoleArn' => 'roleArn',
                       'CreationTime' => 'creationTime',
                       'FilterName' => 'filterName',
                       'Distribution' => 'distribution',
                       'LogGroupName' => 'logGroupName',
                       'DestinationArn' => 'destinationArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::SubscriptionFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::SubscriptionFilter object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::SubscriptionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Represents a subscription filter.

=head1 ATTRIBUTES


=head2 CreationTime => Int

  The creation time of the subscription filter, expressed as the number
of milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 DestinationArn => Str

  The Amazon Resource Name (ARN) of the destination.


=head2 Distribution => Str

  


=head2 FilterName => Str

  The name of the subscription filter.


=head2 FilterPattern => Str

  


=head2 LogGroupName => Str

  The name of the log group.


=head2 RoleArn => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


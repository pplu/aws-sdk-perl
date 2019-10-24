# Generated from json/callargs_class.tt

package Paws::Lightsail::GetRelationalDatabaseEvents;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Lightsail::Types qw//;
  has DurationInMinutes => (is => 'ro', isa => Int, predicate => 1);
  has PageToken => (is => 'ro', isa => Str, predicate => 1);
  has RelationalDatabaseName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetRelationalDatabaseEvents');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabaseEventsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PageToken' => {
                                'type' => 'Str'
                              },
               'DurationInMinutes' => {
                                        'type' => 'Int'
                                      },
               'RelationalDatabaseName' => {
                                             'type' => 'Str'
                                           }
             },
  'NameInRequest' => {
                       'PageToken' => 'pageToken',
                       'DurationInMinutes' => 'durationInMinutes',
                       'RelationalDatabaseName' => 'relationalDatabaseName'
                     },
  'IsRequired' => {
                    'RelationalDatabaseName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseEvents - Arguments for method GetRelationalDatabaseEvents on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRelationalDatabaseEvents on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRelationalDatabaseEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRelationalDatabaseEvents.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRelationalDatabaseEventsResult =
      $lightsail->GetRelationalDatabaseEvents(
      RelationalDatabaseName => 'MyResourceName',
      DurationInMinutes      => 1,                  # OPTIONAL
      PageToken              => 'Mystring',         # OPTIONAL
      );

    # Results:
    my $NextPageToken = $GetRelationalDatabaseEventsResult->NextPageToken;
    my $RelationalDatabaseEvents =
      $GetRelationalDatabaseEventsResult->RelationalDatabaseEvents;

    # Returns a L<Paws::Lightsail::GetRelationalDatabaseEventsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRelationalDatabaseEvents>

=head1 ATTRIBUTES


=head2 DurationInMinutes => Int

The number of minutes in the past from which to retrieve events. For
example, to get all events from the past 2 hours, enter 120.

Default: C<60>

The minimum is 1 and the maximum is 14 days (20160 minutes).



=head2 PageToken => Str

A token used for advancing to a specific page of results from for get
relational database events request.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of the database from which to get events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabaseEvents in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


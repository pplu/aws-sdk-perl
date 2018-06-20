package Paws::IoTAnalytics::Datastore;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', request_name => 'retentionPeriod', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Datastore

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Datastore object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Datastore object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a data store.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the data store.


=head2 CreationTime => Str

  When the data store was created.


=head2 LastUpdateTime => Str

  The last time the data store was updated.


=head2 Name => Str

  The name of the data store.


=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

  How long, in days, message data is kept for the data store.


=head2 Status => Str

  The status of a data store:

=over

=item CREATING

The data store is being created.

=item ACTIVE

The data store has been created and can be used.

=item DELETING

The data store is being deleted.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


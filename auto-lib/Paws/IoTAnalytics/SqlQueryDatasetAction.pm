package Paws::IoTAnalytics::SqlQueryDatasetAction;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::QueryFilter]', request_name => 'filters', traits => ['NameInRequest']);
  has SqlQuery => (is => 'ro', isa => 'Str', request_name => 'sqlQuery', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::SqlQueryDatasetAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::SqlQueryDatasetAction object:

  $service_obj->Method(Att1 => { Filters => $value, ..., SqlQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::SqlQueryDatasetAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

The SQL query to modify the message.

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::IoTAnalytics::QueryFilter>]

  Pre-filters applied to message data.


=head2 B<REQUIRED> SqlQuery => Str

  A SQL query string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


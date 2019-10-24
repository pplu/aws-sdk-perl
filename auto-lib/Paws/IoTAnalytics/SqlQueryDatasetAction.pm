# Generated from default/object.tt
package Paws::IoTAnalytics::SqlQueryDatasetAction;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_QueryFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[IoTAnalytics_QueryFilter]);
  has SqlQuery => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SqlQuery' => {
                               'type' => 'Str'
                             },
               'Filters' => {
                              'class' => 'Paws::IoTAnalytics::QueryFilter',
                              'type' => 'ArrayRef[IoTAnalytics_QueryFilter]'
                            }
             },
  'NameInRequest' => {
                       'SqlQuery' => 'sqlQuery',
                       'Filters' => 'filters'
                     },
  'IsRequired' => {
                    'SqlQuery' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 Filters => ArrayRef[IoTAnalytics_QueryFilter]

  Pre-filters applied to message data.


=head2 B<REQUIRED> SqlQuery => Str

  A SQL query string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::ActivityTypeDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_ActivityTypeInfo SimpleWorkflow_ActivityTypeConfiguration/;
  has Configuration => (is => 'ro', isa => SimpleWorkflow_ActivityTypeConfiguration, required => 1);
  has TypeInfo => (is => 'ro', isa => SimpleWorkflow_ActivityTypeInfo, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TypeInfo' => 1,
                    'Configuration' => 1
                  },
  'NameInRequest' => {
                       'Configuration' => 'configuration',
                       'TypeInfo' => 'typeInfo'
                     },
  'types' => {
               'Configuration' => {
                                    'class' => 'Paws::SimpleWorkflow::ActivityTypeConfiguration',
                                    'type' => 'SimpleWorkflow_ActivityTypeConfiguration'
                                  },
               'TypeInfo' => {
                               'type' => 'SimpleWorkflow_ActivityTypeInfo',
                               'class' => 'Paws::SimpleWorkflow::ActivityTypeInfo'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTypeDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => SimpleWorkflow_ActivityTypeConfiguration

The configuration settings registered with the activity type.


=head2 B<REQUIRED> TypeInfo => SimpleWorkflow_ActivityTypeInfo

General information about the activity type.

The status of activity type (returned in the ActivityTypeInfo
structure) can be one of the following.

=over

=item *

C<REGISTERED> E<ndash> The type is registered and available. Workers
supporting this type should be running.

=item *

C<DEPRECATED> E<ndash> The type was deprecated using
DeprecateActivityType, but is still in use. You should keep workers
supporting this type running. You cannot create new tasks of this type.

=back



=head2 _request_id => Str


=cut

1;
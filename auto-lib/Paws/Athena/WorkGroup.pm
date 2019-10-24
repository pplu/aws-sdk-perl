# Generated from default/object.tt
package Paws::Athena::WorkGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw/Athena_WorkGroupConfiguration/;
  has Configuration => (is => 'ro', isa => Athena_WorkGroupConfiguration);
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Configuration' => {
                                    'class' => 'Paws::Athena::WorkGroupConfiguration',
                                    'type' => 'Athena_WorkGroupConfiguration'
                                  },
               'State' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::WorkGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::WorkGroup object:

  $service_obj->Method(Att1 => { Configuration => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::WorkGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Configuration

=head1 DESCRIPTION

A workgroup, which contains a name, description, creation time, state,
and other configuration, listed under WorkGroup$Configuration. Each
workgroup enables you to isolate queries for you or your group of users
from other queries in the same account, to configure the query results
location and the encryption configuration (known as workgroup
settings), to enable sending query metrics to Amazon CloudWatch, and to
establish per-query data usage control limits for all queries in a
workgroup. The workgroup settings override is specified in
EnforceWorkGroupConfiguration (true/false) in the
WorkGroupConfiguration. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.

=head1 ATTRIBUTES


=head2 Configuration => Athena_WorkGroupConfiguration

  The configuration of the workgroup, which includes the location in
Amazon S3 where query results are stored, the encryption configuration,
if any, used for query results; whether the Amazon CloudWatch Metrics
are enabled for the workgroup; whether workgroup settings override
client-side settings; and the data usage limit for the amount of data
scanned per query, if it is specified. The workgroup settings override
is specified in EnforceWorkGroupConfiguration (true/false) in the
WorkGroupConfiguration. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.


=head2 CreationTime => Str

  The date and time the workgroup was created.


=head2 Description => Str

  The workgroup description.


=head2 B<REQUIRED> Name => Str

  The workgroup name.


=head2 State => Str

  The state of the workgroup: ENABLED or DISABLED.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


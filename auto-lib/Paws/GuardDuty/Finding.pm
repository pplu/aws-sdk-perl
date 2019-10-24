# Generated from default/object.tt
package Paws::GuardDuty::Finding;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::GuardDuty::Types qw/GuardDuty_Service GuardDuty_Resource/;
  has AccountId => (is => 'ro', isa => Str, required => 1);
  has Arn => (is => 'ro', isa => Str, required => 1);
  has Confidence => (is => 'ro', isa => Num);
  has CreatedAt => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Partition => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str, required => 1);
  has Resource => (is => 'ro', isa => GuardDuty_Resource, required => 1);
  has SchemaVersion => (is => 'ro', isa => Str, required => 1);
  has Service => (is => 'ro', isa => GuardDuty_Service);
  has Severity => (is => 'ro', isa => Num, required => 1);
  has Title => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str, required => 1);
  has UpdatedAt => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaVersion' => {
                                    'type' => 'Str'
                                  },
               'Resource' => {
                               'class' => 'Paws::GuardDuty::Resource',
                               'type' => 'GuardDuty_Resource'
                             },
               'Id' => {
                         'type' => 'Str'
                       },
               'Title' => {
                            'type' => 'Str'
                          },
               'Service' => {
                              'class' => 'Paws::GuardDuty::Service',
                              'type' => 'GuardDuty_Service'
                            },
               'Type' => {
                           'type' => 'Str'
                         },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Partition' => {
                                'type' => 'Str'
                              },
               'Confidence' => {
                                 'type' => 'Num'
                               },
               'Severity' => {
                               'type' => 'Num'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Region' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'SchemaVersion' => 'schemaVersion',
                       'Resource' => 'resource',
                       'Id' => 'id',
                       'Title' => 'title',
                       'Service' => 'service',
                       'Type' => 'type',
                       'UpdatedAt' => 'updatedAt',
                       'CreatedAt' => 'createdAt',
                       'AccountId' => 'accountId',
                       'Arn' => 'arn',
                       'Partition' => 'partition',
                       'Confidence' => 'confidence',
                       'Severity' => 'severity',
                       'Description' => 'description',
                       'Region' => 'region'
                     },
  'IsRequired' => {
                    'SchemaVersion' => 1,
                    'Resource' => 1,
                    'Id' => 1,
                    'Type' => 1,
                    'UpdatedAt' => 1,
                    'CreatedAt' => 1,
                    'AccountId' => 1,
                    'Arn' => 1,
                    'Region' => 1,
                    'Severity' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Finding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Finding object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Finding object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  AWS account ID where the activity occurred that prompted GuardDuty to
generate a finding.


=head2 B<REQUIRED> Arn => Str

  The ARN of a finding described by the action.


=head2 Confidence => Num

  The confidence level of a finding.


=head2 B<REQUIRED> CreatedAt => Str

  The time stamp at which a finding was generated.


=head2 Description => Str

  The description of a finding.


=head2 B<REQUIRED> Id => Str

  The identifier that corresponds to a finding described by the action.


=head2 Partition => Str

  The AWS resource partition.


=head2 B<REQUIRED> Region => Str

  The AWS region where the activity occurred that prompted GuardDuty to
generate a finding.


=head2 B<REQUIRED> Resource => GuardDuty_Resource

  The AWS resource associated with the activity that prompted GuardDuty
to generate a finding.


=head2 B<REQUIRED> SchemaVersion => Str

  Findings' schema version.


=head2 Service => GuardDuty_Service

  Additional information assigned to the generated finding by GuardDuty.


=head2 B<REQUIRED> Severity => Num

  The severity of a finding.


=head2 Title => Str

  The title of a finding.


=head2 B<REQUIRED> Type => Str

  The type of a finding described by the action.


=head2 B<REQUIRED> UpdatedAt => Str

  The time stamp at which a finding was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


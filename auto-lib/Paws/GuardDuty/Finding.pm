# Generated from default/object.tt
package Paws::GuardDuty::Finding;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::GuardDuty::Types qw/GuardDuty_Resource GuardDuty_Service/;
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
  'NameInRequest' => {
                       'Type' => 'type',
                       'UpdatedAt' => 'updatedAt',
                       'CreatedAt' => 'createdAt',
                       'Description' => 'description',
                       'Service' => 'service',
                       'Severity' => 'severity',
                       'Arn' => 'arn',
                       'Id' => 'id',
                       'Partition' => 'partition',
                       'AccountId' => 'accountId',
                       'Region' => 'region',
                       'SchemaVersion' => 'schemaVersion',
                       'Confidence' => 'confidence',
                       'Title' => 'title',
                       'Resource' => 'resource'
                     },
  'IsRequired' => {
                    'UpdatedAt' => 1,
                    'CreatedAt' => 1,
                    'SchemaVersion' => 1,
                    'Region' => 1,
                    'Type' => 1,
                    'AccountId' => 1,
                    'Severity' => 1,
                    'Arn' => 1,
                    'Id' => 1,
                    'Resource' => 1
                  },
  'types' => {
               'Service' => {
                              'class' => 'Paws::GuardDuty::Service',
                              'type' => 'GuardDuty_Service'
                            },
               'Description' => {
                                  'type' => 'Str'
                                },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Severity' => {
                               'type' => 'Num'
                             },
               'Id' => {
                         'type' => 'Str'
                       },
               'Partition' => {
                                'type' => 'Str'
                              },
               'SchemaVersion' => {
                                    'type' => 'Str'
                                  },
               'Region' => {
                             'type' => 'Str'
                           },
               'Title' => {
                            'type' => 'Str'
                          },
               'Resource' => {
                               'class' => 'Paws::GuardDuty::Resource',
                               'type' => 'GuardDuty_Resource'
                             },
               'Confidence' => {
                                 'type' => 'Num'
                               }
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

Contains information about the finding, which is generated when
abnormal or suspicious activity is detected.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  The ID of the account in which the finding was generated.


=head2 B<REQUIRED> Arn => Str

  The ARN for the finding.


=head2 Confidence => Num

  The confidence score for the finding.


=head2 B<REQUIRED> CreatedAt => Str

  The time and date at which the finding was created.


=head2 Description => Str

  The description of the finding.


=head2 B<REQUIRED> Id => Str

  The ID of the finding.


=head2 Partition => Str

  The partition associated with the finding.


=head2 B<REQUIRED> Region => Str

  The Region in which the finding was generated.


=head2 B<REQUIRED> Resource => GuardDuty_Resource

  


=head2 B<REQUIRED> SchemaVersion => Str

  The version of the schema used for the finding.


=head2 Service => GuardDuty_Service

  


=head2 B<REQUIRED> Severity => Num

  The severity of the finding.


=head2 Title => Str

  The title for the finding.


=head2 B<REQUIRED> Type => Str

  The type of the finding.


=head2 B<REQUIRED> UpdatedAt => Str

  The time and date at which the finding was laste updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


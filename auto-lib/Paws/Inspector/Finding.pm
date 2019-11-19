# Generated from default/object.tt
package Paws::Inspector::Finding;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Bool Num/;
  use Paws::Inspector::Types qw/Inspector_InspectorServiceAttributes Inspector_Attribute Inspector_AssetAttributes/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has AssetAttributes => (is => 'ro', isa => Inspector_AssetAttributes);
  has AssetType => (is => 'ro', isa => Str);
  has Attributes => (is => 'ro', isa => ArrayRef[Inspector_Attribute], required => 1);
  has Confidence => (is => 'ro', isa => Int);
  has CreatedAt => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has IndicatorOfCompromise => (is => 'ro', isa => Bool);
  has NumericSeverity => (is => 'ro', isa => Num);
  has Recommendation => (is => 'ro', isa => Str);
  has SchemaVersion => (is => 'ro', isa => Int);
  has Service => (is => 'ro', isa => Str);
  has ServiceAttributes => (is => 'ro', isa => Inspector_InspectorServiceAttributes);
  has Severity => (is => 'ro', isa => Str);
  has Title => (is => 'ro', isa => Str);
  has UpdatedAt => (is => 'ro', isa => Str, required => 1);
  has UserAttributes => (is => 'ro', isa => ArrayRef[Inspector_Attribute], required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CreatedAt' => 1,
                    'UpdatedAt' => 1,
                    'Arn' => 1,
                    'Attributes' => 1,
                    'UserAttributes' => 1
                  },
  'NameInRequest' => {
                       'NumericSeverity' => 'numericSeverity',
                       'IndicatorOfCompromise' => 'indicatorOfCompromise',
                       'AssetType' => 'assetType',
                       'Id' => 'id',
                       'Severity' => 'severity',
                       'Arn' => 'arn',
                       'Description' => 'description',
                       'UserAttributes' => 'userAttributes',
                       'Service' => 'service',
                       'UpdatedAt' => 'updatedAt',
                       'CreatedAt' => 'createdAt',
                       'ServiceAttributes' => 'serviceAttributes',
                       'AssetAttributes' => 'assetAttributes',
                       'Recommendation' => 'recommendation',
                       'Title' => 'title',
                       'Confidence' => 'confidence',
                       'Attributes' => 'attributes',
                       'SchemaVersion' => 'schemaVersion'
                     },
  'types' => {
               'Title' => {
                            'type' => 'Str'
                          },
               'Recommendation' => {
                                     'type' => 'Str'
                                   },
               'Confidence' => {
                                 'type' => 'Int'
                               },
               'Attributes' => {
                                 'type' => 'ArrayRef[Inspector_Attribute]',
                                 'class' => 'Paws::Inspector::Attribute'
                               },
               'SchemaVersion' => {
                                    'type' => 'Int'
                                  },
               'IndicatorOfCompromise' => {
                                            'type' => 'Bool'
                                          },
               'AssetType' => {
                                'type' => 'Str'
                              },
               'NumericSeverity' => {
                                      'type' => 'Num'
                                    },
               'Id' => {
                         'type' => 'Str'
                       },
               'Severity' => {
                               'type' => 'Str'
                             },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Service' => {
                              'type' => 'Str'
                            },
               'UserAttributes' => {
                                     'type' => 'ArrayRef[Inspector_Attribute]',
                                     'class' => 'Paws::Inspector::Attribute'
                                   },
               'Description' => {
                                  'type' => 'Str'
                                },
               'AssetAttributes' => {
                                      'class' => 'Paws::Inspector::AssetAttributes',
                                      'type' => 'Inspector_AssetAttributes'
                                    },
               'ServiceAttributes' => {
                                        'class' => 'Paws::Inspector::InspectorServiceAttributes',
                                        'type' => 'Inspector_InspectorServiceAttributes'
                                      },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'UpdatedAt' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Finding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Finding object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Finding object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an Amazon Inspector finding. This data type
is used as the response element in the DescribeFindings action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN that specifies the finding.


=head2 AssetAttributes => Inspector_AssetAttributes

  A collection of attributes of the host from which the finding is
generated.


=head2 AssetType => Str

  The type of the host from which the finding is generated.


=head2 B<REQUIRED> Attributes => ArrayRef[Inspector_Attribute]

  The system-defined attributes for the finding.


=head2 Confidence => Int

  This data element is currently not used.


=head2 B<REQUIRED> CreatedAt => Str

  The time when the finding was generated.


=head2 Description => Str

  The description of the finding.


=head2 Id => Str

  The ID of the finding.


=head2 IndicatorOfCompromise => Bool

  This data element is currently not used.


=head2 NumericSeverity => Num

  The numeric value of the finding severity.


=head2 Recommendation => Str

  The recommendation for the finding.


=head2 SchemaVersion => Int

  The schema version of this data type.


=head2 Service => Str

  The data element is set to "Inspector".


=head2 ServiceAttributes => Inspector_InspectorServiceAttributes

  This data type is used in the Finding data type.


=head2 Severity => Str

  The finding severity. Values can be set to High, Medium, Low, and
Informational.


=head2 Title => Str

  The name of the finding.


=head2 B<REQUIRED> UpdatedAt => Str

  The time when AddAttributesToFindings is called.


=head2 B<REQUIRED> UserAttributes => ArrayRef[Inspector_Attribute]

  The user-defined attributes that are assigned to the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


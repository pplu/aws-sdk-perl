# Generated from json/callargs_class.tt

package Paws::SSM::UpdateOpsItem;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::SSM::Types qw/SSM_RelatedOpsItem SSM_OpsItemNotification SSM_OpsItemOperationalData/;
  has Category => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Notifications => (is => 'ro', isa => ArrayRef[SSM_OpsItemNotification], predicate => 1);
  has OperationalData => (is => 'ro', isa => SSM_OpsItemOperationalData, predicate => 1);
  has OperationalDataToDelete => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has OpsItemId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Priority => (is => 'ro', isa => Int, predicate => 1);
  has RelatedOpsItems => (is => 'ro', isa => ArrayRef[SSM_RelatedOpsItem], predicate => 1);
  has Severity => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);
  has Title => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateOpsItem');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::UpdateOpsItemResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Priority' => {
                               'type' => 'Int'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'OperationalDataToDelete' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               'RelatedOpsItems' => {
                                      'class' => 'Paws::SSM::RelatedOpsItem',
                                      'type' => 'ArrayRef[SSM_RelatedOpsItem]'
                                    },
               'Severity' => {
                               'type' => 'Str'
                             },
               'OperationalData' => {
                                      'class' => 'Paws::SSM::OpsItemOperationalData',
                                      'type' => 'SSM_OpsItemOperationalData'
                                    },
               'Notifications' => {
                                    'class' => 'Paws::SSM::OpsItemNotification',
                                    'type' => 'ArrayRef[SSM_OpsItemNotification]'
                                  },
               'Category' => {
                               'type' => 'Str'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'Title' => {
                            'type' => 'Str'
                          },
               'OpsItemId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'OpsItemId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateOpsItem - Arguments for method UpdateOpsItem on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOpsItem on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateOpsItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOpsItem.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateOpsItemResponse = $ssm->UpdateOpsItem(
      OpsItemId     => 'MyOpsItemId',
      Category      => 'MyOpsItemCategory',       # OPTIONAL
      Description   => 'MyOpsItemDescription',    # OPTIONAL
      Notifications => [
        {
          Arn => 'MyString',                      # OPTIONAL
        },
        ...
      ],                                          # OPTIONAL
      OperationalData => {
        'MyOpsItemDataKey' => {
          Type =>
            'SearchableString',    # values: SearchableString, String; OPTIONAL
          Value => 'MyOpsItemDataValueString',    # OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
      OperationalDataToDelete => [
        'MyString', ...    # OPTIONAL
      ],                   # OPTIONAL
      Priority        => 1,    # OPTIONAL
      RelatedOpsItems => [
        {
          OpsItemId => 'MyString',    # OPTIONAL

        },
        ...
      ],                              # OPTIONAL
      Severity => 'MyOpsItemSeverity',    # OPTIONAL
      Status   => 'Open',                 # OPTIONAL
      Title    => 'MyOpsItemTitle',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateOpsItem>

=head1 ATTRIBUTES


=head2 Category => Str

Specify a new category for an OpsItem.



=head2 Description => Str

Update the information about the OpsItem. Provide enough information so
that users reading this OpsItem for the first time understand the
issue.



=head2 Notifications => ArrayRef[SSM_OpsItemNotification]

The Amazon Resource Name (ARN) of an SNS topic where notifications are
sent when this OpsItem is edited or changed.



=head2 OperationalData => SSM_OpsItemOperationalData

Add new keys or edit existing key-value pairs of the OperationalData
map in the OpsItem object.

Operational data is custom data that provides useful reference details
about the OpsItem. For example, you can specify log files, error
strings, license keys, troubleshooting tips, or other relevant data.
You enter operational data as key-value pairs. The key has a maximum
length of 128 characters. The value has a maximum size of 20 KB.

Operational data keys I<can't> begin with the following: amazon, aws,
amzn, ssm, /amazon, /aws, /amzn, /ssm.

You can choose to make the data searchable by other users in the
account or you can restrict search access. Searchable data means that
all users with access to the OpsItem Overview page (as provided by the
DescribeOpsItems API action) can view and search on the specified data.
Operational data that is not searchable is only viewable by users who
have access to the OpsItem (as provided by the GetOpsItem API action).

Use the C</aws/resources> key in OperationalData to specify a related
resource in the request. Use the C</aws/automations> key in
OperationalData to associate an Automation runbook with the OpsItem. To
view AWS CLI example commands that use these keys, see Creating
OpsItems Manually
(http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems)
in the I<AWS Systems Manager User Guide>.



=head2 OperationalDataToDelete => ArrayRef[Str|Undef]

Keys that you want to remove from the OperationalData map.



=head2 B<REQUIRED> OpsItemId => Str

The ID of the OpsItem.



=head2 Priority => Int

The importance of this OpsItem in relation to other OpsItems in the
system.



=head2 RelatedOpsItems => ArrayRef[SSM_RelatedOpsItem]

One or more OpsItems that share something in common with the current
OpsItems. For example, related OpsItems can include OpsItems with
similar error messages, impacted resources, or statuses for the
impacted resource.



=head2 Severity => Str

Specify a new severity for an OpsItem.



=head2 Status => Str

The OpsItem status. Status can be C<Open>, C<In Progress>, or
C<Resolved>. For more information, see Editing OpsItem Details
(http://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html)
in the I<AWS Systems Manager User Guide>.

Valid values are: C<"Open">, C<"InProgress">, C<"Resolved">

=head2 Title => Str

A short heading that describes the nature of the OpsItem and the
impacted resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOpsItem in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


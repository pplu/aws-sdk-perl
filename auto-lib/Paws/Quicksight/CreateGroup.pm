
package Paws::Quicksight::CreateGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Quicksight::Types qw//;
  has AwsAccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has GroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Namespace => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{AwsAccountId}/namespaces/{Namespace}/groups');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Quicksight::CreateGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Namespace' => {
                                'type' => 'Str'
                              },
               'GroupName' => {
                                'type' => 'Str'
                              },
               'AwsAccountId' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'Namespace' => 'Namespace',
                    'AwsAccountId' => 'AwsAccountId'
                  },
  'IsRequired' => {
                    'Namespace' => 1,
                    'GroupName' => 1,
                    'AwsAccountId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateGroup - Arguments for method CreateGroup on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateGroupResponse = $quicksight->CreateGroup(
      AwsAccountId => 'MyAwsAccountId',
      GroupName    => 'MyGroupName',
      Namespace    => 'MyNamespace',
      Description  => 'MyGroupDescription',    # OPTIONAL
    );

    # Results:
    my $Group     = $CreateGroupResponse->Group;
    my $RequestId = $CreateGroupResponse->RequestId;
    my $Status    = $CreateGroupResponse->Status;

    # Returns a L<Paws::Quicksight::CreateGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that the group is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.



=head2 Description => Str

A description for the group that you want to create.



=head2 B<REQUIRED> GroupName => Str

A name for the group that you want to create.



=head2 B<REQUIRED> Namespace => Str

The namespace. Currently, you should set this to C<default>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


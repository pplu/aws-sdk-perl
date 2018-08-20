
package Paws::RDS::ModifyOptionGroup;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has OptionsToInclude => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionConfiguration]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyOptionGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyOptionGroup - Arguments for method ModifyOptionGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyOptionGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyOptionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyOptionGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To modify an option group
    # The following example adds an option to an option group.
    my $ModifyOptionGroupResult = $rds->ModifyOptionGroup(
      {
        'ApplyImmediately' => 1,
        'OptionGroupName'  => 'myawsuser-og02',
        'OptionsToInclude' => [

          {
            'DBSecurityGroupMemberships' => ['default'],
            'OptionName'                 => 'MEMCACHED'
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyOptionGroup>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

Indicates whether the changes should be applied immediately, or during
the next maintenance window for each instance associated with the
option group.



=head2 B<REQUIRED> OptionGroupName => Str

The name of the option group to be modified.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance once it is associated with a DB instance



=head2 OptionsToInclude => ArrayRef[L<Paws::RDS::OptionConfiguration>]

Options in this list are added to the option group or, if already
present, the specified configuration is used to update the existing
configuration.



=head2 OptionsToRemove => ArrayRef[Str|Undef]

Options in this list are removed from the option group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyOptionGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


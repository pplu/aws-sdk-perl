
package Paws::Snowball::GetSnowballUsage;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSnowballUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::GetSnowballUsageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetSnowballUsage - Arguments for method GetSnowballUsage on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSnowballUsage on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method GetSnowballUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSnowballUsage.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
# To see your Snowball service limit and the number of Snowballs you have in use
# Returns information about the Snowball service limit for your account, and
# also the number of Snowballs your account has in use.
#
# The default service limit for the number of Snowballs that you can have at
# one time is 1. If you want to increase your service limit, contact AWS
# Support.
    my $GetSnowballUsageResult = $snowball->GetSnowballUsage();

    # Results:
    my $SnowballLimit  = $GetSnowballUsageResult->SnowballLimit;
    my $SnowballsInUse = $GetSnowballUsageResult->SnowballsInUse;

    # Returns a L<Paws::Snowball::GetSnowballUsageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/GetSnowballUsage>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSnowballUsage in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::DS::DescribeTrusts;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TrustIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrusts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeTrustsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeTrusts - Arguments for method DescribeTrusts on Paws::DS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrusts on the 
AWS Directory Service service. Use the attributes of this class
as arguments to method DescribeTrusts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrusts.

As an example:

  $service_obj->DescribeTrusts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DirectoryId => Str

  The Directory ID of the AWS directory that is a part of the requested
trust relationship.


=head2 Limit => Int

  The maximum number of objects to return.


=head2 NextToken => Str

  The I<DescribeTrustsResult.NextToken> value from a previous call to
DescribeTrusts. Pass null if this is the first call.


=head2 TrustIds => ArrayRef[Str]

  A list of identifiers of the trust relationships for which to obtain
the information. If this member is null, all trust relationships that
belong to the current account are returned.

An empty list results in an C<InvalidParameterException> being thrown.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrusts in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


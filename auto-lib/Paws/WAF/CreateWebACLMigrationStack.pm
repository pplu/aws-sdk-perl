
package Paws::WAF::CreateWebACLMigrationStack;
  use Moose;
  has IgnoreUnsupportedType => (is => 'ro', isa => 'Bool', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWebACLMigrationStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::CreateWebACLMigrationStackResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateWebACLMigrationStack - Arguments for method CreateWebACLMigrationStack on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebACLMigrationStack on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method CreateWebACLMigrationStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebACLMigrationStack.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $CreateWebACLMigrationStackResponse = $waf->CreateWebACLMigrationStack(
      IgnoreUnsupportedType => 1,
      S3BucketName          => 'MyS3BucketName',
      WebACLId              => 'MyResourceId',

    );

    # Results:
    my $S3ObjectUrl = $CreateWebACLMigrationStackResponse->S3ObjectUrl;

    # Returns a L<Paws::WAF::CreateWebACLMigrationStackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/CreateWebACLMigrationStack>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IgnoreUnsupportedType => Bool

Indicates whether to exclude entities that can't be migrated or to stop
the migration. Set this to true to ignore unsupported entities in the
web ACL during the migration. Otherwise, if AWS WAF encounters
unsupported entities, it stops the process and throws an exception.



=head2 B<REQUIRED> S3BucketName => Str

The name of the Amazon S3 bucket to store the CloudFormation template
in. The S3 bucket must be configured as follows for the migration:

=over

=item *

The bucket name must start with C<aws-waf-migration->. For example,
C<aws-waf-migration-my-web-acl>.

=item *

The bucket must be in the Region where you are deploying the template.
For example, for a web ACL in us-west-2, you must use an Amazon S3
bucket in us-west-2 and you must deploy the template stack to
us-west-2.

=item *

The bucket policies must permit the migration process to write data.
For listings of the bucket policies, see the Examples section.

=back




=head2 B<REQUIRED> WebACLId => Str

The UUID of the WAF Classic web ACL that you want to migrate to WAF v2.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebACLMigrationStack in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


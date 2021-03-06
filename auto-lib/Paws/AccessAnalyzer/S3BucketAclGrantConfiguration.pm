# Generated by default/object.tt
package Paws::AccessAnalyzer::S3BucketAclGrantConfiguration;
  use Moose;
  has Grantee => (is => 'ro', isa => 'Paws::AccessAnalyzer::AclGrantee', request_name => 'grantee', traits => ['NameInRequest'], required => 1);
  has Permission => (is => 'ro', isa => 'Str', request_name => 'permission', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::S3BucketAclGrantConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::S3BucketAclGrantConfiguration object:

  $service_obj->Method(Att1 => { Grantee => $value, ..., Permission => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::S3BucketAclGrantConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Grantee

=head1 DESCRIPTION

A proposed access control list grant configuration for an Amazon S3
bucket. For more information, see How to Specify an ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#setting-acls).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Grantee => L<Paws::AccessAnalyzer::AclGrantee>

The grantee to whom youE<rsquo>re assigning access rights.


=head2 B<REQUIRED> Permission => Str

The permissions being granted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::GameLift::S3Location;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::S3Location object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Location in Amazon Simple Storage Service (Amazon S3) where a build's
files are stored. This location is assigned in response to a
CreateBuild call, and is always in the same region as the service used
to create the build. For more details see the Amazon S3 documentation.

=head1 ATTRIBUTES


=head2 Bucket => Str

  Amazon S3 bucket identifier.


=head2 Key => Str

  Amazon S3 bucket key.


=head2 RoleArn => Str

  Amazon resource number for the cross-account access role that allows
GameLift access to the S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


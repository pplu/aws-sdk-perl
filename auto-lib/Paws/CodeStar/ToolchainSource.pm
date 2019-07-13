package Paws::CodeStar::ToolchainSource;
  use Moose;
  has S3 => (is => 'ro', isa => 'Paws::CodeStar::S3Location', request_name => 's3', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ToolchainSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::ToolchainSource object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::ToolchainSource object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

The Amazon S3 location where the toolchain template file provided with
the project request is stored. AWS CodeStar retrieves the file during
project creation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3 => L<Paws::CodeStar::S3Location>

  The Amazon S3 bucket where the toolchain template file provided with
the project request is stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


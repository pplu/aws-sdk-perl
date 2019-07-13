package Paws::CodeStar::Code;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::CodeStar::CodeDestination', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has Source => (is => 'ro', isa => 'Paws::CodeStar::CodeSource', request_name => 'source', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::Code

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::Code object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::Code object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Location and destination information about the source code files
provided with the project request. The source code is uploaded to the
new project source repository after project creation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::CodeStar::CodeDestination>

  The repository to be created in AWS CodeStar. Valid values are AWS
CodeCommit or GitHub. After AWS CodeStar provisions the new repository,
the source code files provided with the project request are placed in
the repository.


=head2 B<REQUIRED> Source => L<Paws::CodeStar::CodeSource>

  The location where the source code files provided with the project
request are stored. AWS CodeStar retrieves the files during project
creation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


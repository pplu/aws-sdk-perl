package Paws::CodeStar::ProjectSummary;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', request_name => 'projectArn', traits => ['NameInRequest']);
  has ProjectId => (is => 'ro', isa => 'Str', request_name => 'projectId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ProjectSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::ProjectSummary object:

  $service_obj->Method(Att1 => { ProjectArn => $value, ..., ProjectId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::ProjectSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ProjectArn

=head1 DESCRIPTION

Information about the metadata for a project.

=head1 ATTRIBUTES


=head2 ProjectArn => Str

  The Amazon Resource Name (ARN) of the project.


=head2 ProjectId => Str

  The ID of the project.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


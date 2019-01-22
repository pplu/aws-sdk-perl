package Paws::SSM::PatchSource;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Products => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchSource object:

  $service_obj->Method(Att1 => { Configuration => $value, ..., Products => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Configuration

=head1 DESCRIPTION

Information about the patches to use to update the instances, including
target operating systems and source repository. Applies to Linux
instances only.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => Str

  The value of the yum repo configuration. For example:

C<[main]>

C<cachedir=/var/cache/yum/$basesearch$releasever>

C<keepcache=0>

C<debuglevel=2>


=head2 B<REQUIRED> Name => Str

  The name specified to identify the patch source.


=head2 B<REQUIRED> Products => ArrayRef[Str|Undef]

  The specific operating system versions a patch repository applies to,
such as "Ubuntu16.04", "AmazonLinux2016.09", "RedhatEnterpriseLinux7.2"
or "Suse12.7". For lists of supported product values, see PatchFilter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


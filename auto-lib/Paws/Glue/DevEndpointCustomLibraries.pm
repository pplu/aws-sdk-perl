package Paws::Glue::DevEndpointCustomLibraries;
  use Moose;
  has ExtraJarsS3Path => (is => 'ro', isa => 'Str');
  has ExtraPythonLibsS3Path => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DevEndpointCustomLibraries

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::DevEndpointCustomLibraries object:

  $service_obj->Method(Att1 => { ExtraJarsS3Path => $value, ..., ExtraPythonLibsS3Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::DevEndpointCustomLibraries object:

  $result = $service_obj->Method(...);
  $result->Att1->ExtraJarsS3Path

=head1 DESCRIPTION

Custom libraries to be loaded into a DevEndpoint.

=head1 ATTRIBUTES


=head2 ExtraJarsS3Path => Str

  Path to one or more Java Jars in an S3 bucket that should be loaded in
your DevEndpoint.

Please note that only pure Java/Scala libraries can currently be used
on a DevEndpoint.


=head2 ExtraPythonLibsS3Path => Str

  Path(s) to one or more Python libraries in an S3 bucket that should be
loaded in your DevEndpoint. Multiple values must be complete paths
separated by a comma.

Please note that only pure Python libraries can currently be used on a
DevEndpoint. Libraries that rely on C extensions, such as the pandas
(http://pandas.pydata.org/) Python data analysis library, are not yet
supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


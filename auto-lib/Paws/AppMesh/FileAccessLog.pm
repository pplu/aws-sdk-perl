# Generated from default/object.tt
package Paws::AppMesh::FileAccessLog;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has Path => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Path' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Path' => 1
                  },
  'NameInRequest' => {
                       'Path' => 'path'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::FileAccessLog

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::FileAccessLog object:

  $service_obj->Method(Att1 => { Path => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::FileAccessLog object:

  $result = $service_obj->Method(...);
  $result->Att1->Path

=head1 DESCRIPTION

An object that represents an access log file.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Path => Str

  The file path to write access logs to. You can use C</dev/stdout> to
send access logs to standard out and configure your Envoy container to
use a log driver, such as C<awslogs>, to export the access logs to a
log storage service such as Amazon CloudWatch Logs. You can also
specify a path in the Envoy container's file system to write the files
to disk.

The Envoy process must have write permissions to the path that you
specify here. Otherwise, Envoy fails to bootstrap properly.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

